.class final Lcom/vent/ActChat$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUm:Lcom/vent/ActChat;


# direct methods
.method constructor <init>(Lcom/vent/ActChat;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    invoke-virtual {v2}, Lcom/vent/ActChat;->Bc()Lcom/vent/ba;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    invoke-virtual {v2}, Lcom/vent/ActChat;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vent/ActChat;->aR(Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, v20

    iget v2, v0, Lcom/vent/ba;->state:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v4, v4, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    iget-object v4, v4, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget v2, v2, Lcom/vent/ActChat;->bUk:I

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/vent/ba;->bv(Landroid/content/Context;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget v3, v2, Lcom/vent/ActChat;->bUk:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/vent/ActChat;->bUk:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget v2, v2, Lcom/vent/ActChat;->bUk:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/vent/ba;->bk(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vent/ActChat;->aR(Z)Z

    goto :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vent/ActChat;->aR(Z)Z

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const v4, 0x7f0f00e1

    invoke-static {v3, v4}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    new-instance v3, Lcom/vent/ActChat$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vent/ActChat$3$1;-><init>(Lcom/vent/ActChat$3;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUl:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vent/ActChat;->aR(Z)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    invoke-static {v2}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasMessageComposer;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iput-object v3, v2, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmU:Lcom/layer/sdk/LayerClient;

    new-instance v3, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;

    invoke-direct {v3, v2}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;-><init>(Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;)V

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    const/16 v3, 0x14

    iput v3, v2, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    sget-object v3, Lcom/vent/ba;->chb:Lcom/c/a/t;

    if-nez v3, :cond_12

    new-instance v10, Lcom/c/a/t$a;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/c/a/t$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/vent/ba$4;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v2}, Lcom/vent/ba$4;-><init>(Lcom/vent/ba;Landroid/content/Context;)V

    iget-object v2, v10, Lcom/c/a/t$a;->bNs:Lcom/c/a/j;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Downloader already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iput-object v3, v10, Lcom/c/a/t$a;->bNs:Lcom/c/a/j;

    new-instance v2, Lcom/c/a/m;

    const/high16 v3, 0x100000

    invoke-direct {v2, v3}, Lcom/c/a/m;-><init>(I)V

    iget-object v3, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    if-eqz v3, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Memory cache already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    iput-object v2, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    sget-object v2, Lcom/vent/ba;->chp:Lcom/vent/ba$d;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "RequestHandler must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, v10, Lcom/c/a/t$a;->bOd:Ljava/util/List;

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lcom/c/a/t$a;->bOd:Ljava/util/List;

    :cond_c
    iget-object v3, v10, Lcom/c/a/t$a;->bOd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RequestHandler already registered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget-object v3, v10, Lcom/c/a/t$a;->bOd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/c/a/t$a;->context:Landroid/content/Context;

    iget-object v2, v10, Lcom/c/a/t$a;->bNs:Lcom/c/a/j;

    if-nez v2, :cond_e

    invoke-static {v3}, Lcom/c/a/ag;->ay(Landroid/content/Context;)Lcom/c/a/j;

    move-result-object v2

    iput-object v2, v10, Lcom/c/a/t$a;->bNs:Lcom/c/a/j;

    :cond_e
    iget-object v2, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    if-nez v2, :cond_f

    new-instance v2, Lcom/c/a/m;

    invoke-direct {v2, v3}, Lcom/c/a/m;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    :cond_f
    iget-object v2, v10, Lcom/c/a/t$a;->bNr:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_10

    new-instance v2, Lcom/c/a/v;

    invoke-direct {v2}, Lcom/c/a/v;-><init>()V

    iput-object v2, v10, Lcom/c/a/t$a;->bNr:Ljava/util/concurrent/ExecutorService;

    :cond_10
    iget-object v2, v10, Lcom/c/a/t$a;->bOk:Lcom/c/a/t$f;

    if-nez v2, :cond_11

    sget-object v2, Lcom/c/a/t$f;->bOw:Lcom/c/a/t$f;

    iput-object v2, v10, Lcom/c/a/t$a;->bOk:Lcom/c/a/t$f;

    :cond_11
    new-instance v8, Lcom/c/a/aa;

    iget-object v2, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    invoke-direct {v8, v2}, Lcom/c/a/aa;-><init>(Lcom/c/a/d;)V

    new-instance v2, Lcom/c/a/i;

    iget-object v4, v10, Lcom/c/a/t$a;->bNr:Ljava/util/concurrent/ExecutorService;

    sget-object v5, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    iget-object v6, v10, Lcom/c/a/t$a;->bNs:Lcom/c/a/j;

    iget-object v7, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    invoke-direct/range {v2 .. v8}, Lcom/c/a/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/c/a/j;Lcom/c/a/d;Lcom/c/a/aa;)V

    new-instance v9, Lcom/c/a/t;

    iget-object v12, v10, Lcom/c/a/t$a;->bMY:Lcom/c/a/d;

    iget-object v13, v10, Lcom/c/a/t$a;->bOa:Lcom/c/a/t$c;

    iget-object v14, v10, Lcom/c/a/t$a;->bOk:Lcom/c/a/t$f;

    iget-object v15, v10, Lcom/c/a/t$a;->bOd:Ljava/util/List;

    iget-object v0, v10, Lcom/c/a/t$a;->bOh:Landroid/graphics/Bitmap$Config;

    move-object/from16 v17, v0

    iget-boolean v0, v10, Lcom/c/a/t$a;->bOi:Z

    move/from16 v18, v0

    iget-boolean v0, v10, Lcom/c/a/t$a;->bOj:Z

    move/from16 v19, v0

    move-object v10, v3

    move-object v11, v2

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v19}, Lcom/c/a/t;-><init>(Landroid/content/Context;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/t$c;Lcom/c/a/t$f;Ljava/util/List;Lcom/c/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V

    sput-object v9, Lcom/vent/ba;->chb:Lcom/c/a/t;

    :cond_12
    sget-object v2, Lcom/vent/ba;->chp:Lcom/vent/ba$d;

    new-instance v3, Lcom/layer/atlas/util/b/a/a;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-direct {v3, v4}, Lcom/layer/atlas/util/b/a/a;-><init>(Lcom/layer/sdk/LayerClient;)V

    iput-object v3, v2, Lcom/vent/ba$d;->chL:Lcom/layer/atlas/util/b/a/a;

    sget-object v2, Lcom/vent/ba;->chb:Lcom/c/a/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v3, v4, v2}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->a(Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)Lcom/layer/atlas/AtlasMessagesRecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/layer/atlas/b/a;

    const/4 v5, 0x0

    new-instance v6, Lcom/vent/ActChat$3$2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8, v2}, Lcom/vent/ActChat$3$2;-><init>(Lcom/vent/ActChat$3;Landroid/app/Activity;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/vent/ActChat$3$3;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8, v2}, Lcom/vent/ActChat$3$3;-><init>(Lcom/vent/ActChat$3;Landroid/app/Activity;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/vent/ActChat$3$4;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v2}, Lcom/vent/ActChat$3$4;-><init>(Lcom/vent/ActChat$3;Landroid/content/Context;Lcom/c/a/t;)V

    aput-object v6, v4, v5

    const/4 v2, 0x3

    new-instance v5, Lcom/vent/ActChat$3$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vent/ActChat$3$5;-><init>(Lcom/vent/ActChat$3;)V

    aput-object v5, v4, v2

    const/4 v2, 0x4

    new-instance v5, Lcom/vent/ActChat$3$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vent/ActChat$3$6;-><init>(Lcom/vent/ActChat$3;)V

    aput-object v5, v4, v2

    iget-object v2, v3, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-virtual {v2, v4}, Lcom/layer/atlas/a/a;->a([Lcom/layer/atlas/b/a;)Lcom/layer/atlas/a/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-virtual {v2}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    check-cast v2, Lcom/layer/atlas/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    iget-boolean v3, v3, Lcom/vent/a/e;->cjK:Z

    iput-boolean v3, v2, Lcom/layer/atlas/a/a;->bnK:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-virtual {v2}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    check-cast v2, Lcom/layer/atlas/a/a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/layer/atlas/a/a;->bnL:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-virtual {v2}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    check-cast v2, Lcom/layer/atlas/a/a;

    new-instance v3, Lcom/vent/ActChat$3$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vent/ActChat$3$7;-><init>(Lcom/vent/ActChat$3;)V

    iput-object v3, v2, Lcom/layer/atlas/a/a;->bnM:Lcom/layer/atlas/a/a$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    iget-boolean v2, v2, Lcom/vent/a/e;->cjJ:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    new-instance v3, Lcom/layer/atlas/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    invoke-direct {v3, v4}, Lcom/layer/atlas/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-nez v3, :cond_13

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "LayerClient cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-virtual {v3, v2}, Lcom/layer/sdk/LayerClient;->registerTypingIndicator(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;)Lcom/layer/sdk/LayerClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    new-instance v3, Lcom/layer/atlas/c/a;

    invoke-direct {v3}, Lcom/layer/atlas/c/a;-><init>()V

    invoke-virtual {v2, v3}, Lcom/layer/atlas/a;->a(Lcom/layer/atlas/a$b;)Lcom/layer/atlas/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    new-instance v3, Lcom/vent/ActChat$3$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vent/ActChat$3$8;-><init>(Lcom/vent/ActChat$3;)V

    iput-object v3, v2, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    :cond_14
    new-instance v3, Lcom/vent/ActChat$a;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v2}, Lcom/layer/sdk/LayerClient;->getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vent/ActChat$a;-><init>(Lcom/layer/sdk/messaging/Identity;)V

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v2, :cond_16

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v3, Lcom/vent/ActChat$a;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v4, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v4}, Lcom/layer/atlas/AtlasMessageComposer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/layer/atlas/b$g;->atlas_message_composer:I

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmU:Lcom/layer/sdk/LayerClient;

    sget v2, Lcom/layer/atlas/b$f;->attachment:I

    invoke-virtual {v4, v2}, Lcom/layer/atlas/AtlasMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    new-instance v5, Lcom/layer/atlas/AtlasMessageComposer$1;

    invoke-direct {v5, v4}, Lcom/layer/atlas/AtlasMessageComposer$1;-><init>(Lcom/layer/atlas/AtlasMessageComposer;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/layer/atlas/b$f;->message_edit_text:I

    invoke-virtual {v4, v2}, Lcom/layer/atlas/AtlasMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    new-instance v5, Lcom/layer/atlas/AtlasMessageComposer$2;

    invoke-direct {v5, v4}, Lcom/layer/atlas/AtlasMessageComposer$2;-><init>(Lcom/layer/atlas/AtlasMessageComposer;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    new-instance v5, Lcom/layer/atlas/AtlasMessageComposer$3;

    invoke-direct {v5, v4}, Lcom/layer/atlas/AtlasMessageComposer$3;-><init>(Lcom/layer/atlas/AtlasMessageComposer;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget v2, Lcom/layer/atlas/b$f;->send_button:I

    invoke-virtual {v4, v2}, Lcom/layer/atlas/AtlasMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    new-instance v5, Lcom/layer/atlas/AtlasMessageComposer$4;

    invoke-direct {v5, v4}, Lcom/layer/atlas/AtlasMessageComposer$4;-><init>(Lcom/layer/atlas/AtlasMessageComposer;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->HX:Z

    invoke-virtual {v4, v2}, Lcom/layer/atlas/AtlasMessageComposer;->setEnabled(Z)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    iget v5, v4, Lcom/layer/atlas/AtlasMessageComposer;->bnf:I

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    const/4 v5, 0x0

    iget v6, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmL:F

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    iget v5, v4, Lcom/layer/atlas/AtlasMessageComposer;->bnj:I

    :try_start_1
    const-class v6, Landroid/widget/TextView;

    const-string v7, "mCursorDrawableRes"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const-class v7, Landroid/widget/TextView;

    const-string v8, "mEditor"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mCursorDrawable"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x0

    aget-object v2, v9, v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x1

    aget-object v2, v9, v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    iget v5, v4, Lcom/layer/atlas/AtlasMessageComposer;->bni:I

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bmY:Landroid/widget/EditText;

    iget-object v5, v4, Lcom/layer/atlas/AtlasMessageComposer;->bng:Landroid/graphics/Typeface;

    iget v6, v4, Lcom/layer/atlas/AtlasMessageComposer;->bnh:I

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v4}, Lcom/layer/atlas/AtlasMessageComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/layer/atlas/b$c;->atlas_message_composer_attach_button:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v5, v4, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v2, v4, Lcom/layer/atlas/AtlasMessageComposer;->bna:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    new-instance v4, Lcom/layer/atlas/b/d/b;

    invoke-direct {v4, v3}, Lcom/layer/atlas/b/d/b;-><init>(Lcom/layer/sdk/messaging/Identity;)V

    invoke-virtual {v2, v4}, Lcom/layer/atlas/AtlasMessageComposer;->a(Lcom/layer/atlas/b/d/b;)Lcom/layer/atlas/AtlasMessageComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    const v4, 0x7f0901d7

    invoke-virtual {v2, v4}, Lcom/layer/atlas/AtlasMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getImeOptions()I

    move-result v3

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    invoke-virtual {v3}, Lcom/vent/ActChat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v3, Lcom/vent/MyApplication;->cgh:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    iput-object v3, v2, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iget-object v3, v2, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v3, v2}, Lcom/layer/sdk/LayerClient;->registerEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    invoke-virtual {v2}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->we()Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    iget-object v2, v2, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    const-class v4, Lcom/layer/sdk/messaging/Message;

    invoke-static {v4}, Lcom/layer/sdk/query/Query;->builder(Ljava/lang/Class;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v4

    new-instance v5, Lcom/layer/sdk/query/Predicate;

    sget-object v6, Lcom/layer/sdk/messaging/Message$Property;->CONVERSATION:Lcom/layer/sdk/messaging/Message$Property;

    sget-object v7, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-direct {v5, v6, v7, v3}, Lcom/layer/sdk/query/Predicate;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/layer/sdk/query/Query$Builder;->predicate(Lcom/layer/sdk/query/Predicate;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/layer/sdk/query/SortDescriptor;

    const/4 v5, 0x0

    new-instance v6, Lcom/layer/sdk/query/SortDescriptor;

    sget-object v7, Lcom/layer/sdk/messaging/Message$Property;->POSITION:Lcom/layer/sdk/messaging/Message$Property;

    sget-object v8, Lcom/layer/sdk/query/SortDescriptor$Order;->ASCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    invoke-direct {v6, v7, v8}, Lcom/layer/sdk/query/SortDescriptor;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/SortDescriptor$Order;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/layer/sdk/query/Query$Builder;->sortDescriptor([Lcom/layer/sdk/query/SortDescriptor;)Lcom/layer/sdk/query/Query$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Query$Builder;->build()Lcom/layer/sdk/query/Query;

    move-result-object v3

    iget-object v4, v2, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v4, v3}, Lcom/layer/sdk/query/RecyclerViewController;->setQuery(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/ListViewController;

    invoke-virtual {v2}, Lcom/layer/atlas/a/a;->refresh()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    iget-boolean v2, v2, Lcom/vent/a/e;->cjJ:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    iput-object v3, v2, Lcom/layer/atlas/a;->bmV:Lcom/layer/sdk/messaging/Conversation;

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v3, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v2, v3}, Lcom/layer/atlas/AtlasMessageComposer;->b(Lcom/layer/sdk/messaging/Conversation;)Lcom/layer/atlas/AtlasMessageComposer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Conversation;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v2, v2, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/layer/sdk/messaging/Conversation;->syncMoreHistoricMessages(I)V

    goto/16 :goto_0

    :cond_16
    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->username:Ljava/lang/String;

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method
