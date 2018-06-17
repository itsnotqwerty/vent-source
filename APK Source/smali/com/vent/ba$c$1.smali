.class final Lcom/vent/ba$c$1;
.super Lcom/vent/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic chJ:I

.field final synthetic chK:Lcom/vent/ba$c;

.field final version:I


# direct methods
.method constructor <init>(Lcom/vent/ba$c;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iput p4, p0, Lcom/vent/ba$c$1;->chJ:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/vent/v;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->version:I

    iput v0, p0, Lcom/vent/ba$c$1;->version:I

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/vent/ba$c$1;->version:I

    iget-object v1, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v1, v1, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v1, v1, Lcom/vent/ba;->version:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v3}, Lcom/vent/ba;->aZ(Z)V

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/ba$c$1;->bUd:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    sget-object v0, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/ba$c$1;->caq:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    iget v2, p0, Lcom/vent/ba$c$1;->chJ:I

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v6, v0, Lcom/vent/ba;->chd:I

    move v5, v3

    move v7, v2

    :goto_1
    if-ge v6, v7, :cond_5

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/vent/ba$c$1;->ccH:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    move v2, v3

    :goto_2
    iget-object v1, p0, Lcom/vent/ba$c$1;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lcom/vent/ba$c$1;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/e;

    iget-object v8, v1, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/vent/ba$c$1;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3
    invoke-static {v0}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v8

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v1, v1, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v7, -0x1

    if-ltz v8, :cond_9

    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v5, 0x1

    :goto_4
    iget-object v5, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v5, v5, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v5, v5, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v5, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v5, v5, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v5, v5, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v5, v0}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/vent/ba;->c(Lcom/layer/sdk/messaging/Conversation;)V

    :cond_1
    move v5, v1

    move v7, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_5

    :cond_3
    if-ltz v8, :cond_4

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v2, v0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iput-object v1, v0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v8}, Lcom/vent/ba;->eF(I)Z

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v1, v5

    move v2, v7

    :goto_6
    move v6, v0

    move v5, v1

    move v7, v2

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iput v7, v0, Lcom/vent/ba;->chd:I

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v1, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chd:I

    iget-object v2, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v2, v2, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v2, v2, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Lcom/vent/ba;->aZ(Z)V

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Eh()V

    invoke-static {}, Lcom/vent/bb;->Ew()V

    if-lez v5, :cond_6

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BY()V

    :cond_6
    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iput-boolean v3, v0, Lcom/vent/ba;->chf:Z

    iget-object v0, p0, Lcom/vent/ba$c$1;->chK:Lcom/vent/ba$c;

    iget-object v0, v0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BZ()V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_7

    :cond_8
    move v0, v6

    goto :goto_6

    :cond_9
    move v1, v5

    goto/16 :goto_4

    :cond_a
    move-object v1, v4

    goto/16 :goto_3
.end method
