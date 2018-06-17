.class final Lcom/vent/aj$2$1;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/aj$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cep:Lcom/vent/aj$2;


# direct methods
.method constructor <init>(Lcom/vent/aj$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

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
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iput-boolean v4, v0, Lcom/vent/r;->bZp:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0, v4}, Lcom/vent/r;->bb(Z)V

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0}, Lcom/vent/r;->Cw()I

    move-result v2

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0}, Lcom/vent/r;->CC()V

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v1, v1, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v1, v1, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    invoke-virtual {v1}, Lcom/vent/r;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/r;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->ccR:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->caq:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/r;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->bXh:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/r;->bXh:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->bXg:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/r;->bXg:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0}, Lcom/vent/r;->Cw()I

    move-result v2

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v1, v1, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v1, v1, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    invoke-virtual {v1}, Lcom/vent/r;->CL()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vent/r;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0, v4}, Lcom/vent/r;->bb(Z)V

    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/r;->bZY:J

    :cond_2
    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0, v4, v4}, Lcom/vent/r;->g(ZZ)V

    iget v0, p0, Lcom/vent/aj$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/vent/aj$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/vent/aj$2$1;->cep:Lcom/vent/aj$2;

    iget-object v0, v0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    invoke-virtual {v0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/aj$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/aj$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
