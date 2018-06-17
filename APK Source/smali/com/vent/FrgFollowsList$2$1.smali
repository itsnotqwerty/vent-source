.class final Lcom/vent/FrgFollowsList$2$1;
.super Lcom/vent/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgFollowsList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic ceu:Lcom/vent/FrgFollowsList$2;


# direct methods
.method constructor <init>(Lcom/vent/FrgFollowsList$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iput-object p1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iput-boolean p8, p0, Lcom/vent/FrgFollowsList$2$1;->bXz:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/vent/w;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v3, v0, Lcom/vent/h;->bZp:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0, v3}, Lcom/vent/h;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/FrgFollowsList$2$1;->bXz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CC()V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v1, v1, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v1, v1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    invoke-virtual {v1}, Lcom/vent/h;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/h;->notifyItemRangeRemoved(II)V

    move v2, v3

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v1, v1, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v1, v1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/FrgFollowsList$2$1;->bUd:Ljava/util/HashMap;

    invoke-static {v1, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v1, v1, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v1, v1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vent/FrgFollowsList$2$1;->ccK:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v1, v1, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v1, v1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->caq:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/FrgFollowsList$2$1;->caq:Ljava/util/HashMap;

    invoke-static {v1, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/h;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->Cw()I

    move-result v4

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v1, v1, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v1, v1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    invoke-virtual {v1}, Lcom/vent/h;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v5, v4, v2

    invoke-virtual {v0, v1, v5}, Lcom/vent/h;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    if-eq v4, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vent/h;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/h;->bZY:J

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0, v3, v3}, Lcom/vent/h;->g(ZZ)V

    iget v0, p0, Lcom/vent/FrgFollowsList$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vent/FrgFollowsList$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2$1;->ceu:Lcom/vent/FrgFollowsList$2;

    iget-object v0, v0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    invoke-virtual {v0}, Lcom/vent/FrgFollowsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/FrgFollowsList$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/FrgFollowsList$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method
