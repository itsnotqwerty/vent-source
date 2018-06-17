.class public final Lcom/vent/FrgFollowsList;
.super Lcom/vent/av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/av",
        "<",
        "Lcom/vent/h;",
        "Lcom/vent/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field ccI:Ljava/lang/String;

.field ccL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vent/av;-><init>()V

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->ccI:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->ccL:Ljava/lang/String;

    return-void
.end method

.method private u(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->cdb:Ljava/lang/CharSequence;

    const-string v0, "main_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->ccI:Ljava/lang/String;

    const-string v0, "user_id_fieldname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->ccL:Ljava/lang/String;

    const-string v0, "users_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgFollowsList;->ccJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cba:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cba:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "noitemstext"

    const v2, 0x7f0f00d3

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Du()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-wide v0, v0, Lcom/vent/h;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgFollowsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/vent/aq;->c(ZZZ)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "desc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "main_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_id_fieldname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "users_tag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "noitemstext"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/vent/FrgFollowsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/vent/FrgFollowsList;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/FrgFollowsList$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vent/FrgFollowsList$2;-><init>(Lcom/vent/FrgFollowsList;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/vent/av;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/a/x;->EN()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v1, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/av;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/FrgFollowsList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/FrgFollowsList;->u(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/FrgFollowsList$1;

    invoke-virtual {p0}, Lcom/vent/FrgFollowsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/FrgFollowsList$1;-><init>(Lcom/vent/FrgFollowsList;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    :cond_0
    return-void
.end method
