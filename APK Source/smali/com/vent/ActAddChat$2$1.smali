.class final Lcom/vent/ActAddChat$2$1;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActAddChat$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTr:Lcom/vent/ActAddChat$2;


# direct methods
.method constructor <init>(Lcom/vent/ActAddChat$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    iget-object v2, p0, Lcom/vent/ActAddChat$2$1;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iput-boolean v1, v0, Lcom/vent/p;->bZp:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0, v1}, Lcom/vent/p;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0}, Lcom/vent/p;->Cw()I

    move-result v0

    iget-object v2, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v2, v2, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v2, v2, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v3, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v3, v3, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v3, v3, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v3, v3, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vent/ActAddChat$2$1;->ccR:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v2, v2, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v2, v2, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v2}, Lcom/vent/p;->Cw()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v3, v3, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v3, v3, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v4, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v4, v4, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v4, v4, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v4}, Lcom/vent/p;->CL()I

    move-result v4

    add-int/2addr v4, v0

    sub-int v5, v2, v0

    invoke-virtual {v3, v4, v5}, Lcom/vent/p;->notifyItemRangeInserted(II)V

    iget-object v3, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v3, v3, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v3, v3, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-eq v2, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/vent/p;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/p;->bZY:J

    :cond_2
    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget-object v0, v0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0, v1, v1}, Lcom/vent/p;->g(ZZ)V

    iget v0, p0, Lcom/vent/ActAddChat$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/vent/ActAddChat$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ActAddChat$2$1;->bTr:Lcom/vent/ActAddChat$2;

    iget-object v0, v0, Lcom/vent/ActAddChat$2;->bTo:Lcom/vent/ActAddChat;

    iget v1, p0, Lcom/vent/ActAddChat$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/ActAddChat$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
