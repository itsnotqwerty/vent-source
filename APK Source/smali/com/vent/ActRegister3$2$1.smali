.class final Lcom/vent/ActRegister3$2$1;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXA:Lcom/vent/ActRegister3$2;

.field final synthetic bXz:Z


# direct methods
.method constructor <init>(Lcom/vent/ActRegister3$2;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iput-boolean p5, p0, Lcom/vent/ActRegister3$2$1;->bXz:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iput-boolean v1, v0, Lcom/vent/j;->bZp:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0, v1}, Lcom/vent/j;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0}, Lcom/vent/j;->Cw()I

    move-result v0

    iget-boolean v2, p0, Lcom/vent/ActRegister3$2$1;->bXz:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v2, v2, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v2, v2, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v2}, Lcom/vent/j;->CC()V

    iget-object v2, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v2, v2, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v2, v2, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v3, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v3, v3, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v3, v3, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v3}, Lcom/vent/j;->CL()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/vent/j;->notifyItemRangeRemoved(II)V

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v2, v2, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v2, v2, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v3, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v3, v3, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v3, v3, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v3, v3, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vent/ActRegister3$2$1;->caK:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v2, v2, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v2, v2, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v2}, Lcom/vent/j;->Cw()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v3, v3, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v3, v3, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v4, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v4, v4, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v4, v4, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v4}, Lcom/vent/j;->CL()I

    move-result v4

    add-int/2addr v4, v0

    sub-int v0, v2, v0

    invoke-virtual {v3, v4, v0}, Lcom/vent/j;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0, v1}, Lcom/vent/j;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/j;->bZY:J

    :cond_2
    iget-object v0, p0, Lcom/vent/ActRegister3$2$1;->bXA:Lcom/vent/ActRegister3$2;

    iget-object v0, v0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0, v1, v1}, Lcom/vent/j;->g(ZZ)V

    goto/16 :goto_0
.end method
