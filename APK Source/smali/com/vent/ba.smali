.class public final Lcom/vent/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerAuthenticationListener;
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener;
.implements Lcom/layer/sdk/listeners/LayerConnectionListener;
.implements Lcom/layer/sdk/listeners/LayerSyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ba$c;,
        Lcom/vent/ba$b;,
        Lcom/vent/ba$d;,
        Lcom/vent/ba$a;
    }
.end annotation


# static fields
.field private static cgY:Z

.field static chb:Lcom/c/a/t;

.field static final chp:Lcom/vent/ba$d;


# instance fields
.field private bZH:Z

.field private ccT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/MyApplication;",
            ">;"
        }
    .end annotation
.end field

.field public cgZ:Lcom/layer/sdk/LayerClient;

.field cha:Z

.field chc:Z

.field chd:I

.field che:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field chf:Z

.field chg:Z

.field final chh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/ba$a;",
            ">;"
        }
    .end annotation
.end field

.field chi:Landroid/net/Uri;

.field chj:I

.field chk:Z

.field private chl:Z

.field chm:Ljava/lang/Runnable;

.field chn:I

.field cho:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field public volatile state:I

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/ba;->cgY:Z

    new-instance v0, Lcom/vent/ba$d;

    invoke-direct {v0}, Lcom/vent/ba$d;-><init>()V

    sput-object v0, Lcom/vent/ba;->chp:Lcom/vent/ba$d;

    return-void
.end method

.method public constructor <init>(Lcom/vent/MyApplication;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iput v2, p0, Lcom/vent/ba;->state:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/vent/ba;->cha:Z

    iput v2, p0, Lcom/vent/ba;->version:I

    iput-boolean v2, p0, Lcom/vent/ba;->chg:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/vent/ba;->chi:Landroid/net/Uri;

    iput v2, p0, Lcom/vent/ba;->chj:I

    iput-boolean v2, p0, Lcom/vent/ba;->chk:Z

    iput-boolean v2, p0, Lcom/vent/ba;->chl:Z

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vent/ba;->d(Landroid/app/Application;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vent/ba;->state:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/vent/ba$1;

    invoke-direct {v0, p0, p1}, Lcom/vent/ba$1;-><init>(Lcom/vent/ba;Lcom/vent/MyApplication;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method

.method private BX()V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->BX()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Eg()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/ba$a;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

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

.method private Ei()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Ek()V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/ba;->chl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ba;->chl:Z

    invoke-direct {p0}, Lcom/vent/ba;->Ep()V

    :cond_0
    return-void
.end method

.method static Eo()V
    .locals 2

    sget-object v0, Lcom/vent/ba;->chp:Lcom/vent/ba$d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ba$d;->chL:Lcom/layer/atlas/util/b/a/a;

    return-void
.end method

.method private Ep()V
    .locals 2

    const-string v0, "Layer.cleanUpAfterDeauth"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/vent/bb;->i(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/LayerClient;->unregisterConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/LayerClient;->unregisterAuthenticationListener(Lcom/layer/sdk/listeners/LayerAuthenticationListener;)Lcom/layer/sdk/LayerClient;

    :cond_0
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    new-instance v1, Lcom/vent/ba$6;

    invoke-direct {v1, p0, v0}, Lcom/vent/ba$6;-><init>(Lcom/vent/ba;Lcom/layer/sdk/LayerClient;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/layer/sdk/messaging/Conversation;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/messaging/Conversation;->getLastMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {p2}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v4

    if-ltz v4, :cond_3

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    invoke-virtual {v0, p1, v1}, Lcom/vent/a/f;->b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V

    invoke-virtual {p2}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    invoke-virtual {p0, v4}, Lcom/vent/ba;->eF(I)Z

    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    new-instance v4, Lcom/vent/a/f;

    invoke-direct {v4}, Lcom/vent/a/f;-><init>()V

    iput-object v0, v4, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v4, p1, v1}, Lcom/vent/a/f;->b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V

    invoke-virtual {p2}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/vent/ba;->chk:Z

    if-nez v0, :cond_5

    iget-object v0, v4, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    if-ge v1, v0, :cond_5

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v0, v0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v5, v4, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_7

    :cond_4
    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    invoke-static {}, Lcom/vent/bb;->EI()I

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private bj(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0, p1}, Lcom/vent/ba$a;->aZ(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static c(Lcom/layer/sdk/messaging/Conversation;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/messaging/Conversation;->markAllMessagesAsRead()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Landroid/app/Application;)V
    .locals 1

    sget-boolean v0, Lcom/vent/ba;->cgY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ba;->cgY:Z

    :try_start_0
    sget-boolean v0, Lcom/vent/bb;->cii:Z

    invoke-static {p0, v0}, Lcom/layer/sdk/LayerClient;->setLoggingEnabled(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/layer/sdk/LayerClient;->applicationCreated(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static invalidate()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->Ew()V

    return-void
.end method


# virtual methods
.method final BY()V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->BY()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final BZ()V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->BZ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final Eh()V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final Ej()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/vent/ba;->Ei()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vent/ba;->state:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/vent/ba;->state:I

    :try_start_0
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->connect()Lcom/layer/sdk/LayerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput v1, p0, Lcom/vent/ba;->state:I

    goto :goto_0
.end method

.method final El()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vent/ba;->state:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v4, p0, Lcom/vent/ba;->cha:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/vent/ba;->cha:Z

    invoke-virtual {p0}, Lcom/vent/ba;->Ej()V

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/vent/ba;->cha:Z

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ba;->En()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/vent/bb;->ciI:J

    sput-boolean v4, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    iput-boolean v5, p0, Lcom/vent/ba;->cha:Z

    iput v5, p0, Lcom/vent/ba;->chj:I

    iget-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vent/MyApplication;->Ea()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v5}, Lcom/vent/ba;->a(ZLjava/lang/Runnable;I)V

    invoke-direct {p0}, Lcom/vent/ba;->Ep()V

    iget-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0

    :pswitch_3
    iput-boolean v4, p0, Lcom/vent/ba;->cha:Z

    invoke-virtual {p0}, Lcom/vent/ba;->Em()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final Em()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/vent/ba;->bk(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ba;->cha:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vent/ba;->Ei()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vent/ba;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    :try_start_0
    iput v0, p0, Lcom/vent/ba;->state:I

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vent/a/m;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_2
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->deauthenticate()Lcom/layer/sdk/LayerClient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba;->chn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/vent/ba;->state:I

    if-le v0, v2, :cond_3

    iput v2, p0, Lcom/vent/ba;->state:I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/vent/ba;->En()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba;->chn:I

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->authenticate()Lcom/layer/sdk/LayerClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method final En()V
    .locals 2

    const/4 v1, 0x6

    iget v0, p0, Lcom/vent/ba;->state:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/vent/ba;->state:I

    :cond_0
    iget-boolean v0, p0, Lcom/vent/ba;->chk:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vent/ba;->BX()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0
.end method

.method final Eq()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/vent/ba;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ba;->version:I

    invoke-virtual {p0, v2}, Lcom/vent/ba;->aZ(Z)V

    sput-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    sput-object v1, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    sput-object v1, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->Ew()V

    invoke-virtual {p0}, Lcom/vent/ba;->BY()V

    iput v2, p0, Lcom/vent/ba;->chd:I

    iput-boolean v2, p0, Lcom/vent/ba;->chk:Z

    invoke-virtual {p0}, Lcom/vent/ba;->Eh()V

    iput-boolean v2, p0, Lcom/vent/ba;->chc:Z

    iput-boolean v2, p0, Lcom/vent/ba;->chf:Z

    return-void
.end method

.method final a(Landroid/net/Uri;Lcom/vent/d/c$b;)V
    .locals 1

    new-instance v0, Lcom/vent/ba$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/vent/ba$8;-><init>(Lcom/vent/ba;Landroid/net/Uri;Lcom/vent/d/c$b;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method final a(ZLjava/lang/Runnable;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iput-boolean v2, p0, Lcom/vent/ba;->cha:Z

    :cond_0
    const/16 v0, 0x64

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vent/ba;->chj:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ba$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vent/ba$5;-><init>(Lcom/vent/ba;ZLjava/lang/Runnable;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->done()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/vent/ba;->chp:Lcom/vent/ba$d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ba$d;->chL:Lcom/layer/atlas/util/b/a/a;

    iget-boolean v0, p0, Lcom/vent/ba;->chg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/LayerClient;->unregisterEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    :cond_4
    iput-boolean v2, p0, Lcom/vent/ba;->chg:Z

    :cond_5
    iget-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_6

    iput-object p2, p0, Lcom/vent/ba;->chm:Ljava/lang/Runnable;

    :cond_6
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/vent/ba;->chl:Z

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    sput-boolean v3, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_7
    iget-object v1, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->KEEP_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/layer/sdk/LayerClient;->deauthenticate(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)Lcom/layer/sdk/LayerClient;

    iput v2, p0, Lcom/vent/ba;->chn:I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    goto :goto_2

    :cond_9
    iput-boolean v2, p0, Lcom/vent/ba;->chl:Z

    invoke-direct {p0}, Lcom/vent/ba;->Ep()V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method final aZ(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/ba;->bZH:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/vent/ba;->bZH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vent/ba;->bj(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/vent/ba;->bZH:Z

    iget-boolean v0, p0, Lcom/vent/ba;->bZH:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vent/ba;->bj(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    return-void
.end method

.method final bk(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x4

    iput-boolean v0, p0, Lcom/vent/ba;->cha:Z

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vent/ba;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/vent/ba;->state:I

    if-le v0, v2, :cond_0

    iput v2, p0, Lcom/vent/ba;->state:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_1
    iget-object v1, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->KEEP_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/layer/sdk/LayerClient;->deauthenticate(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)Lcom/layer/sdk/LayerClient;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba;->chn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/vent/ba;->state:I

    if-le v0, v2, :cond_3

    iput v2, p0, Lcom/vent/ba;->state:I

    goto :goto_1
.end method

.method public final bv(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ba;->Eq()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ba;->chc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/ba;->chf:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->Ew()V

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fg()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vent/ba;->Eh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ba;->chc:Z

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/vent/ba;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ba;->version:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ba;->chc:Z

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    iget-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ba$b;

    invoke-direct {v1, p0, p1}, Lcom/vent/ba$b;-><init>(Lcom/vent/ba;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final eE(I)V
    .locals 2

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0, p1}, Lcom/vent/ba$a;->eo(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final eF(I)Z
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v4, v0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    iget-object v1, v0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vent/ba;->chk:Z

    if-nez v1, :cond_4

    :cond_0
    if-eqz v4, :cond_4

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_4

    if-eq v2, p1, :cond_3

    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/f;

    iget-object v1, v1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    add-int/lit8 v1, p1, 0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ge p1, v2, :cond_5

    add-int/lit8 v1, v2, -0x1

    :goto_1
    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vent/ba;->chf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vent/ba;->chc:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba;->chd:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ba;->chf:Z

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    iget-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ba$c;

    invoke-direct {v1, p0, p2}, Lcom/vent/ba$c;-><init>(Lcom/vent/ba;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method final k(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0, p1}, Lcom/vent/ba$a;->en(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    return-void
.end method

.method public final onAfterSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/vent/ba;->chj:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vent/ba;->chj:I

    iget-boolean v0, p0, Lcom/vent/ba;->chk:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ba;->chk:Z

    iget v0, p0, Lcom/vent/ba;->state:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vent/ba;->BX()V

    goto :goto_0
.end method

.method public final onAuthenticated(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ba;->cha:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p2}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_2
    invoke-virtual {p1}, Lcom/layer/sdk/LayerClient;->deauthenticate()Lcom/layer/sdk/LayerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba;->chn:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/vent/ba;->En()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onAuthenticationChallenge(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/vent/ba;->cho:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/vent/ba;->cho:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p0, Lcom/vent/ba;->chn:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/vent/ba;->chn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vent/ba;->chn:I

    new-instance v1, Lcom/vent/ba$2;

    const-string v2, "api/v1/my/conversations/authenticate.json"

    const-string v3, "POST"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/vent/ba$2;-><init>(Lcom/vent/ba;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final onAuthenticationError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/vent/ba;->state:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/vent/ba;->state:I

    goto :goto_0
.end method

.method public final onBeforeSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/vent/ba;->chj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ba;->chj:I

    goto :goto_0
.end method

.method public final onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 13

    invoke-virtual {p1}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ba;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v1

    move v6, v2

    move v7, v3

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/changes/LayerChange;

    sget-object v2, Lcom/vent/ba$9;->chE:[I

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObjectType()Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/vent/ba$9;->chD:[I

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    move v1, v6

    :goto_2
    move v6, v1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_2

    :pswitch_2
    sget-object v2, Lcom/vent/ba$9;->chD:[I

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    :cond_3
    move v1, v5

    move v2, v7

    move v3, v8

    :goto_3
    move v5, v1

    move v7, v2

    move v8, v3

    goto :goto_1

    :pswitch_3
    iget-boolean v2, p0, Lcom/vent/ba;->chc:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v1

    if-ltz v1, :cond_13

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vent/ba;->k(IZ)V

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_4
    move v5, v1

    move v7, v2

    move v8, v3

    goto :goto_1

    :pswitch_4
    iget-boolean v2, p0, Lcom/vent/ba;->chc:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/messaging/Conversation;

    invoke-direct {p0, v0, v1}, Lcom/vent/ba;->a(Landroid/content/Context;Lcom/layer/sdk/messaging/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_5
    move v5, v1

    move v7, v2

    move v8, v3

    goto :goto_1

    :pswitch_5
    iget-boolean v2, p0, Lcom/vent/ba;->chc:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v10

    if-ltz v10, :cond_5

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/f;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    const/4 v3, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_4
    :goto_6
    packed-switch v3, :pswitch_data_3

    move v1, v5

    move v2, v7

    :goto_7
    move v5, v1

    move v7, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v12, "lastMessage"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x0

    goto :goto_6

    :sswitch_1
    const-string v12, "totalUnreadMessageCount"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :sswitch_2
    const-string v12, "metadata"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x2

    goto :goto_6

    :pswitch_6
    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/messaging/Message;

    invoke-virtual {v2, v0, v1}, Lcom/vent/a/f;->b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V

    invoke-virtual {p0, v10}, Lcom/vent/ba;->eF(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :goto_8
    const/4 v1, 0x1

    move v5, v1

    move v8, v2

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    const/4 v7, 0x1

    :pswitch_8
    const/4 v1, 0x1

    move v2, v7

    goto :goto_7

    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/vent/ba;->a(Landroid/content/Context;Lcom/layer/sdk/messaging/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    move v1, v5

    move v2, v7

    move v3, v8

    goto/16 :goto_3

    :pswitch_9
    iget-boolean v2, p0, Lcom/vent/ba;->chk:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vent/ba$9;->chD:[I

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_a
    sget v2, Lcom/vent/a;->level:I

    if-lez v2, :cond_2

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/messaging/Message;

    invoke-interface {v1}, Lcom/layer/sdk/messaging/Message;->getRecipientStatus()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v3}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v3

    iget-object v10, p0, Lcom/vent/ba;->chi:Landroid/net/Uri;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/vent/ba;->chi:Landroid/net/Uri;

    invoke-virtual {v10, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_7
    invoke-static {v2}, Lcom/vent/a/f;->d(Lcom/layer/sdk/messaging/Conversation;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v4, :cond_8

    invoke-interface {v1}, Lcom/layer/sdk/messaging/Message;->getSentAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4}, Lcom/layer/sdk/messaging/Message;->getSentAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-lez v2, :cond_10

    :cond_8
    :goto_9
    move-object v4, v1

    goto/16 :goto_1

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/vent/ba;->Eh()V

    :cond_a
    if-eqz v8, :cond_b

    invoke-static {}, Lcom/vent/bb;->Ew()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-static {v0, v4}, Lcom/layer/atlas/util/c;->a(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/vent/bb;->l(Landroid/net/Uri;)Lcom/vent/a/f;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/vent/LayerPushReceiver;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/vent/ba;->BY()V

    :cond_d
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ba$7;

    invoke-direct {v1, p0}, Lcom/vent/ba$7;-><init>(Lcom/vent/ba;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Lcom/vent/a/f;->EQ()Lcom/vent/a/x;

    move-result-object v1

    goto :goto_a

    :cond_f
    const-string v1, ""

    goto :goto_b

    :cond_10
    move-object v1, v4

    goto :goto_9

    :cond_11
    move v2, v8

    goto/16 :goto_8

    :cond_12
    move v1, v5

    move v2, v7

    move v3, v8

    goto/16 :goto_5

    :cond_13
    move v1, v5

    move v2, v7

    move v3, v8

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x56c6ef6f -> :sswitch_0
        -0x1ad284d1 -> :sswitch_2
        0x7fb9d4fb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method

.method public final onConnectionConnected(Lcom/layer/sdk/LayerClient;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/vent/ba;->state:I

    invoke-virtual {p0}, Lcom/vent/ba;->Em()V

    goto :goto_0
.end method

.method public final onConnectionDisconnected(Lcom/layer/sdk/LayerClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/ba;->Ek()V

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vent/ba;->state:I

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0
.end method

.method public final onConnectionError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/ba;->Ek()V

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vent/ba;->state:I

    invoke-virtual {p0}, Lcom/vent/ba;->BZ()V

    goto :goto_0
.end method

.method public final onDeauthenticated(Lcom/layer/sdk/LayerClient;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/vent/ba;->state:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/vent/ba;->state:I

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ba;->cha:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vent/ba;->Ei()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ba$3;

    invoke-direct {v1, p0}, Lcom/vent/ba$3;-><init>(Lcom/vent/ba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0}, Lcom/vent/ba;->Ek()V

    goto :goto_0
.end method

.method public final onSyncError(Lcom/layer/sdk/LayerClient;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/LayerClient;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/exceptions/LayerException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/vent/ba;->Eg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ba$a;

    invoke-interface {v0}, Lcom/vent/ba$a;->Ca()V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->Ew()V

    goto :goto_0
.end method

.method public final onSyncProgress(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;I)V
    .locals 0

    return-void
.end method
