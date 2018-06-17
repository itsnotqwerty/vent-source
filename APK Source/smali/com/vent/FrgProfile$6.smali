.class final Lcom/vent/FrgProfile$6;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/FrgProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;

.field final synthetic cfs:Z


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iput-boolean v6, p0, Lcom/vent/FrgProfile$6;->cfs:Z

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move-object v8, v1

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/ab;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iput-boolean v4, v0, Lcom/vent/FrgProfile;->cff:Z

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vent/FrgProfile$6;->ccR:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v0, p0, Lcom/vent/FrgProfile$6;->ccY:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/vent/FrgProfile$6;->ccY:I

    const/16 v1, 0x257

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/vent/FrgProfile$6;->ccY:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iput-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iput-object v2, p0, Lcom/vent/FrgProfile$6;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v1}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/vent/FrgProfile$6;->ccU:I

    iget-object v3, p0, Lcom/vent/FrgProfile$6;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iget-boolean v0, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iget-object v1, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iput-boolean v4, v1, Lcom/vent/FrgProfile;->expanded:Z

    iput-boolean v4, v0, Lcom/vent/FrgProfile;->bWh:Z

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0, v4}, Lcom/vent/FrgProfile;->bf(Z)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->ccV:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vent/bb;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    sget-object v1, Lcom/vent/bb;->ciC:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    sget-wide v2, Lcom/vent/bb;->ciA:J

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->ccR:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iput-object v0, v1, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    iget-object v1, p0, Lcom/vent/FrgProfile$6;->caq:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/FrgProfile$6;->cfr:Lcom/vent/FrgProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    goto :goto_0
.end method
