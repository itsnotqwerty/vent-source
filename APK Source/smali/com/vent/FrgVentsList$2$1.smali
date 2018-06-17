.class final Lcom/vent/FrgVentsList$2$1;
.super Lcom/vent/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgVentsList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic cfI:Lcom/vent/FrgVentsList$2;


# direct methods
.method constructor <init>(Lcom/vent/FrgVentsList$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iput-object p1, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iput-boolean p6, p0, Lcom/vent/FrgVentsList$2$1;->bXz:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ac;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/ac;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iput-boolean v3, v0, Lcom/vent/s;->bZp:Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0, v3}, Lcom/vent/s;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/FrgVentsList$2$1;->bXz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CC()V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v1, v1, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v1, v1, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1}, Lcom/vent/s;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/s;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iput v3, v0, Lcom/vent/s$a;->ccc:I

    move v2, v3

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget v0, v0, Lcom/vent/FrgVentsList;->cfG:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->ccb:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v5, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-nez v5, :cond_3

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget v5, v0, Lcom/vent/a/x;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/vent/a/x;->flags:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/FrgVentsList$2$1;->ccb:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/vent/s$a;->bZY:J

    if-nez v2, :cond_5

    sget-boolean v0, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, p0, Lcom/vent/FrgVentsList$2$1;->ccc:I

    iput v1, v0, Lcom/vent/s$a;->ccc:I

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, p0, Lcom/vent/FrgVentsList$2$1;->ccc:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/vent/s$a;->ccd:I

    :cond_5
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->Cw()I

    move-result v5

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v1, v1, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v1, v1, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1}, Lcom/vent/s;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v6, v5, v2

    invoke-virtual {v0, v1, v6}, Lcom/vent/s;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    if-eq v5, v2, :cond_8

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/vent/s;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->Dw()V

    :cond_6
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0, v3, v3}, Lcom/vent/s;->g(ZZ)V

    iget v0, p0, Lcom/vent/FrgVentsList$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/vent/FrgVentsList$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/vent/FrgVentsList$2$1;->cfI:Lcom/vent/FrgVentsList$2;

    iget-object v0, v0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/FrgVentsList$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/FrgVentsList$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_2
.end method
