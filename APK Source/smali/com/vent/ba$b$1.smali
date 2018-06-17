.class final Lcom/vent/ba$b$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field ccH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic chG:Lcom/vent/ba$b;


# direct methods
.method constructor <init>(Lcom/vent/ba$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ba$b$1;->ccH:Ljava/util/ArrayList;

    :try_start_0
    const-class v0, Lcom/layer/sdk/messaging/Conversation;

    invoke-static {v0}, Lcom/layer/sdk/query/Query;->builder(Ljava/lang/Class;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/query/Predicate;

    sget-object v3, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE:Lcom/layer/sdk/messaging/Conversation$Property;

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->NOT_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/layer/sdk/query/Predicate;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/query/Query$Builder;->predicate(Lcom/layer/sdk/query/Predicate;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/sdk/query/SortDescriptor;

    const/4 v3, 0x0

    new-instance v4, Lcom/layer/sdk/query/SortDescriptor;

    sget-object v5, Lcom/layer/sdk/messaging/Conversation$Property;->LAST_MESSAGE_SENT_AT:Lcom/layer/sdk/messaging/Conversation$Property;

    sget-object v6, Lcom/layer/sdk/query/SortDescriptor$Order;->DESCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    invoke-direct {v4, v5, v6}, Lcom/layer/sdk/query/SortDescriptor;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/SortDescriptor$Order;)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/layer/sdk/query/Query$Builder;->sortDescriptor([Lcom/layer/sdk/query/SortDescriptor;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/query/Query$Builder;->build()Lcom/layer/sdk/query/Query;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v1, v1, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Conversation;

    new-instance v5, Lcom/vent/a/f;

    invoke-direct {v5}, Lcom/vent/a/f;-><init>()V

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v5, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    iget-object v1, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v1, v1, Lcom/vent/ba$b;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getLastMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/vent/a/f;->b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    iget-object v0, p0, Lcom/vent/ba$b$1;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v3, Lcom/layer/sdk/query/Query$ResultType;->OBJECTS:Lcom/layer/sdk/query/Query$ResultType;

    invoke-virtual {v1, v0, v3}, Lcom/layer/sdk/LayerClient;->executeQuery(Lcom/layer/sdk/query/Query;Lcom/layer/sdk/query/Query$ResultType;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    return-object v2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/ba$b$1;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ba$b$1;->ccH:Ljava/util/ArrayList;

    sput-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v0, v0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Eh()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->Ew()V

    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v0, v0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/ba;->chc:Z

    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v0, v0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BZ()V

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v1, v0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v0, v0, Lcom/vent/ba$b;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vent/ba;->g(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ba$b$1;->chG:Lcom/vent/ba$b;

    iget-object v0, v0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BY()V

    return-void
.end method
