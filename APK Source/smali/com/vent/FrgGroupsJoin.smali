.class public final Lcom/vent/FrgGroupsJoin;
.super Lcom/vent/ak;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ak;-><init>()V

    return-void
.end method


# virtual methods
.method final Dy()V
    .locals 2

    invoke-super {p0}, Lcom/vent/ak;->Dy()V

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->bTn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/i;->aZ(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    if-nez v0, :cond_3

    const/16 v0, 0xa

    :goto_1
    iget-object v2, p0, Lcom/vent/FrgGroupsJoin;->bTn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/suggested_groups.json?per_page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CJ()Lcom/vent/a/k;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget v0, v0, Lcom/vent/i;->cap:I

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/groups/search.json?per_page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/FrgGroupsJoin;->bTn:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5border%5d=desc&from%5bfield%5d%5b%5d=group_follows_count&from%5bfield%5d%5b%5d=id&from%5bvalue%5d%5b%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/vent/a/k;->ckj:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5bvalue%5d%5b%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/vent/ak;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "didJoinLeave"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgGroupsJoin;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActGroupsJoin;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/ActGroupsJoin;->bWp:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/FrgGroupsJoin;->cdb:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/vent/FrgGroupsJoin;->cev:I

    iput-boolean v1, p0, Lcom/vent/FrgGroupsJoin;->cew:Z

    invoke-super {p0, p1}, Lcom/vent/ak;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/vent/i;->cap:I

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/i;->caF:Z

    iget-object v0, p0, Lcom/vent/FrgGroupsJoin;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    new-instance v1, Lcom/vent/FrgGroupsJoin$1;

    invoke-direct {v1, p0}, Lcom/vent/FrgGroupsJoin$1;-><init>(Lcom/vent/FrgGroupsJoin;)V

    iput-object v1, v0, Lcom/vent/i;->caG:Ljava/lang/Runnable;

    return-void
.end method
