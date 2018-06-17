.class final Lcom/vent/ak$2$1;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ak$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXz:Z

.field final synthetic cez:Lcom/vent/ak$2;


# direct methods
.method constructor <init>(Lcom/vent/ak$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iput-boolean p7, p0, Lcom/vent/ak$2$1;->bXz:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/ak$2$1;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iput-boolean v3, v0, Lcom/vent/i;->bZp:Z

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v3}, Lcom/vent/i;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->caL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iput-boolean v3, v0, Lcom/vent/i$a;->caL:Z

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->CL()I

    move-result v2

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->Cw()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vent/i;->notifyItemRemoved(I)V

    :cond_2
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/ak$2$1;->bXz:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CC()V

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->CL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vent/i;->notifyItemRangeRemoved(II)V

    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/ak$2$1;->caK:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->Cw()I

    move-result v5

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->CL()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v6, v5, v2

    invoke-virtual {v0, v1, v6}, Lcom/vent/i;->notifyItemRangeInserted(II)V

    if-eq v5, v2, :cond_7

    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->caL:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    instance-of v0, v0, Lcom/vent/al;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iput-boolean v4, v0, Lcom/vent/i$a;->caL:Z

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->CL()I

    move-result v4

    iget-object v1, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v1, v1, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->Cw()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/vent/i;->notifyItemInserted(I)V

    :cond_4
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v2}, Lcom/vent/i;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/i$a;->bZY:J

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v0}, Lcom/vent/ak;->Dw()V

    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v0}, Lcom/vent/ak;->Dy()V

    :cond_5
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v3, v3}, Lcom/vent/i;->g(ZZ)V

    iget v0, p0, Lcom/vent/ak$2$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/vent/ak$2$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/vent/ak$2$1;->cez:Lcom/vent/ak$2;

    iget-object v0, v0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v0}, Lcom/vent/ak;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget v1, p0, Lcom/vent/ak$2$1;->ccU:I

    iget-object v2, p0, Lcom/vent/ak$2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_1
.end method
