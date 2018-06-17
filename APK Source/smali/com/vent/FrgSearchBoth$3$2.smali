.class final Lcom/vent/FrgSearchBoth$3$2;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgSearchBoth$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfz:Lcom/vent/FrgSearchBoth$3;


# direct methods
.method constructor <init>(Lcom/vent/FrgSearchBoth$3;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move-object v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$2;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v2, v0, Lcom/vent/q;->bZp:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0, v2}, Lcom/vent/q;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->CL()I

    move-result v3

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->Cw()I

    move-result v4

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/FrgSearchBoth$3$2;->ccR:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->caq:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/vent/FrgSearchBoth$3$2;->caq:Ljava/util/HashMap;

    invoke-static {v1, v5}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/q;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->Cw()I

    move-result v5

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    if-eq v5, v4, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vent/q;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->CL()I

    move-result v0

    if-eqz v4, :cond_2

    if-eq v0, v3, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->notifyDataSetChanged()V

    :goto_2
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/q;->bZY:J

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0, v2, v2}, Lcom/vent/q;->g(ZZ)V

    iget v0, p0, Lcom/vent/FrgSearchBoth$3$2;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vent/FrgSearchBoth$3$2;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/FrgSearchBoth$3$2;->ccU:I

    iget-object v2, p0, Lcom/vent/FrgSearchBoth$3$2;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$2;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    add-int v1, v3, v4

    sub-int v3, v5, v4

    invoke-virtual {v0, v1, v3}, Lcom/vent/q;->notifyItemRangeInserted(II)V

    goto :goto_2
.end method
