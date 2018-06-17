.class public final Lcom/vent/ActUserListListenRequests;
.super Lcom/vent/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/e;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActUserListListenRequests;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f0f00a4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gaTag"

    const-string v2, "ListenRequests"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 3

    check-cast p1, Lcom/vent/FrgFollowsList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/my/listen_requests.json?per_page="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_2

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5border%5d=desc&from%5bfield%5d=created_at&from%5bvalue%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, "9999-01-01T00:00:00.000Z"

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/vent/a/i;->cjA:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vent/e;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v5, v0, Lcom/vent/h;->car:Z

    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v6, v0, Lcom/vent/h;->cas:Z

    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const-string v1, "listen_requests"

    const-string v2, "follow_requester_id"

    const-string v3, "follow_requesters"

    const v4, 0x7f0f00d3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vent/FrgFollowsList;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ActUserListListenRequests;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    invoke-virtual {v0, v6, v5, v5}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method
