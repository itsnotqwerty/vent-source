.class public final Lcom/vent/au;
.super Lcom/vent/av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/av",
        "<",
        "Lcom/vent/o;",
        "Lcom/vent/a/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/av;-><init>()V

    return-void
.end method

.method public static DV()Lcom/vent/au;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/vent/au;

    invoke-direct {v0}, Lcom/vent/au;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "desc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "users_tag"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "noitemstext"

    const v3, 0x7f0f00d3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "gentleLoad"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/vent/au;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Lcom/vent/au;->u(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private u(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/au;->cdb:Ljava/lang/CharSequence;

    const-string v0, "users_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/au;->ccJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v0, v0, Lcom/vent/o;->cba:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v0, v0, Lcom/vent/o;->cba:Landroid/view/View;

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

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-object v0, v0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-wide v0, v0, Lcom/vent/o;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/au;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/vent/aq;->c(ZZZ)V

    :cond_1
    return-void
.end method

.method public final c(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/au;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/au$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vent/au$2;-><init>(Lcom/vent/au;ZZZ)V

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

    iget-object v1, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/a/x;->EN()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v1, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/o;

    invoke-virtual {v1, v0}, Lcom/vent/o;->b(Lcom/vent/a/x;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/av;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/au;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/au;->u(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/au$1;

    invoke-virtual {p0}, Lcom/vent/au;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/au$1;-><init>(Lcom/vent/au;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    iget-object v0, p0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {p0}, Lcom/vent/au;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gentleLoad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/o;->cbd:Z

    :cond_0
    return-void
.end method
