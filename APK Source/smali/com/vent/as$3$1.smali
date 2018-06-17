.class final Lcom/vent/as$3$1;
.super Lcom/vent/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/as$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic ceN:Lcom/vent/as$3;


# direct methods
.method constructor <init>(Lcom/vent/as$3;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iput-boolean p4, p0, Lcom/vent/as$3$1;->bXz:Z

    invoke-direct {p0, p2, p3}, Lcom/vent/z;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iput-boolean v3, v0, Lcom/vent/n;->bZp:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0, v3}, Lcom/vent/n;->bb(Z)V

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/as$3$1;->bXz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->CC()V

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v1, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v1, v1, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v1, v1, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    invoke-virtual {v1}, Lcom/vent/n;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/n;->notifyItemRangeRemoved(II)V

    move v2, v3

    :cond_2
    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v1, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v1, v1, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v1, v1, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    iget-object v1, v1, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vent/as$3$1;->ccP:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/n;->bZY:J

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->Cw()I

    move-result v4

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v1, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v1, v1, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v1, v1, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    invoke-virtual {v1}, Lcom/vent/n;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v5, v4, v2

    invoke-virtual {v0, v1, v5}, Lcom/vent/n;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    if-eq v4, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vent/n;->bb(Z)V

    iget-boolean v0, p0, Lcom/vent/as$3$1;->bXz:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/s;

    iget-object v0, v0, Lcom/vent/a/s;->ckF:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v0, v4

    sget-wide v4, Lcom/vent/bb;->ciI:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    invoke-static {}, Lcom/vent/bb;->EJ()V

    :cond_3
    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    iget-object v0, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0, v3, v3}, Lcom/vent/n;->g(ZZ)V

    iget v0, p0, Lcom/vent/as$3$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vent/as$3$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/vent/as$3$1;->ceN:Lcom/vent/as$3;

    iget-object v0, v0, Lcom/vent/as$3;->ceL:Lcom/vent/as;

    invoke-virtual {v0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/as$3$1;->ccU:I

    iget-object v2, p0, Lcom/vent/as$3$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method
