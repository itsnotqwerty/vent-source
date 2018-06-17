.class final Lcom/vent/ActVentView$5;
.super Lcom/vent/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView;->Cz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZB:Lcom/vent/ActVentView;


# direct methods
.method constructor <init>(Lcom/vent/ActVentView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ac;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/ac;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iput-boolean v4, v0, Lcom/vent/ActVentView;->bZy:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v0}, Lcom/vent/ActVentView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "dorefresh"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVentView$5;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView$5;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-object v0, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_1

    const-string v2, "vent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/ActVentView;->bZx:J

    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v4}, Lcom/vent/g;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/vent/ActVentView$5;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    const-string v2, "404"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v1, :cond_4

    const-string v1, "vent"

    iget-object v2, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vent/ActVentView;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vent/ActVentView$5;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v0}, Lcom/vent/ActVentView;->finish()V

    goto :goto_0
.end method
