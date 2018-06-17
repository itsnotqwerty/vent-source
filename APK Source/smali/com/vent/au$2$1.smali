.class final Lcom/vent/au$2$1;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/au$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic cfE:Lcom/vent/au$2;


# direct methods
.method constructor <init>(Lcom/vent/au$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    iput-object p1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/vent/au$2$1;->bXz:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/au$2$1;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iput-boolean v3, v0, Lcom/vent/o;->bZp:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0, v3}, Lcom/vent/o;->bb(Z)V

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/au$2$1;->bXz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->CC()V

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    invoke-virtual {v1}, Lcom/vent/o;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/o;->notifyItemRangeRemoved(II)V

    move v2, v3

    :cond_2
    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    iget-object v1, v1, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vent/au$2$1;->ccR:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    iget-object v1, v1, Lcom/vent/o;->caq:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/au$2$1;->caq:Ljava/util/HashMap;

    invoke-static {v1, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/o;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    iget-object v1, v1, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/au$2$1;->bXh:Ljava/util/HashMap;

    invoke-static {v1, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    iget-object v1, v1, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/au$2$1;->bXg:Ljava/util/HashMap;

    invoke-static {v1, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->Cw()I

    move-result v4

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v1, v1, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v1, v1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    invoke-virtual {v1}, Lcom/vent/o;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v5, v4, v2

    invoke-virtual {v0, v1, v5}, Lcom/vent/o;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    if-eq v4, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vent/o;->bb(Z)V

    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/o;->bZY:J

    :cond_3
    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0, v3, v3}, Lcom/vent/o;->g(ZZ)V

    iget v0, p0, Lcom/vent/au$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vent/au$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/vent/au$2$1;->cfE:Lcom/vent/au$2;

    iget-object v0, v0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    invoke-virtual {v0}, Lcom/vent/au;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/au$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/au$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method
