.class final Lcom/vent/FrgInterests$2$1;
.super Lcom/vent/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgInterests$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic ceD:Lcom/vent/FrgInterests$2;


# direct methods
.method constructor <init>(Lcom/vent/FrgInterests$2;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iput-boolean p4, p0, Lcom/vent/FrgInterests$2$1;->bXz:Z

    invoke-direct {p0, p2, p3}, Lcom/vent/y;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iput-boolean v3, v0, Lcom/vent/k;->bZp:Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0, v3}, Lcom/vent/k;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/FrgInterests$2$1;->bXz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->CC()V

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v1, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v1, v1, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v1, v1, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/k;

    invoke-virtual {v1}, Lcom/vent/k;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/k;->notifyItemRangeRemoved(II)V

    move v2, v3

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v1, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v1, v1, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v1, v1, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/k;

    iget-object v1, v1, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/FrgInterests$2$1;->ccO:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->Cw()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_5

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v6, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v7, v0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    iget-object v0, v0, Lcom/vent/a/p;->cjy:Lcom/vent/a/m;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->Cw()I

    move-result v5

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v1, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v1, v1, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v1, v1, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/k;

    invoke-virtual {v1}, Lcom/vent/k;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v6, v5, v2

    invoke-virtual {v0, v1, v6}, Lcom/vent/k;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    if-eq v5, v2, :cond_8

    :goto_3
    invoke-virtual {v0, v4}, Lcom/vent/k;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/k;->bZY:J

    :cond_6
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0, v3, v3}, Lcom/vent/k;->g(ZZ)V

    iget v0, p0, Lcom/vent/FrgInterests$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/vent/FrgInterests$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/vent/FrgInterests$2$1;->ceD:Lcom/vent/FrgInterests$2;

    iget-object v0, v0, Lcom/vent/FrgInterests$2;->ceC:Lcom/vent/FrgInterests;

    invoke-virtual {v0}, Lcom/vent/FrgInterests;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/FrgInterests$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/FrgInterests$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_8
    move v4, v3

    goto :goto_3
.end method
