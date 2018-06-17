.class public final Lcom/vent/ActUserListGroupMembers;
.super Lcom/vent/e;


# instance fields
.field bYM:Lcom/vent/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/e;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActUserListGroupMembers;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f0f00b0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x27

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 3

    check-cast p1, Lcom/vent/FrgFollowsList;

    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p1, Lcom/vent/FrgFollowsList;->bTn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/groups/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    iget-object v2, v2, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/followers.json?per_page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5border%5d=desc&from%5bfield%5d%5b%5d=created_at&from%5bfield%5d%5b%5d=role&from%5bvalue%5d%5b%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/vent/a/i;->cjA:Ljava/util/Date;

    invoke-static {v2}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5bvalue%5d%5b%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v1, v1, 0x18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/groups/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    iget-object v2, v2, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/followers/search.json?per_page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/vent/FrgFollowsList;->bTn:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/vent/a/i;->cjD:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/ActUserListGroupMembers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    iput-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const-string v1, "group_follows"

    const v2, 0x7f0f007c

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/vent/FrgFollowsList;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActUserListGroupMembers;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/e;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v0, v0, Lcom/vent/h;->cat:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-object v3, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    invoke-virtual {v3}, Lcom/vent/a/k;->EY()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, v0, Lcom/vent/h;->cat:Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/vent/ActUserListGroupMembers;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/vent/ActUserListGroupMembers;->Ck()V

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v1, v0, Lcom/vent/h;->cat:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f09002f
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    invoke-virtual {v0}, Lcom/vent/a/k;->EY()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const v3, 0x7f09002f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActUserListGroupMembers;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v0, v0, Lcom/vent/h;->cat:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/vent/e;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
