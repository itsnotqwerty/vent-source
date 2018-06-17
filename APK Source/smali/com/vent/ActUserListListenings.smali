.class public final Lcom/vent/ActUserListListenings;
.super Lcom/vent/e;


# instance fields
.field private bXE:Lcom/vent/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/e;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActUserListListenings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f0f00a8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "gaTag"

    const-string v2, "Listening"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/vent/FrgFollowsList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActUserListListenings;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/followings.json?per_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&from%5border%5d=desc&from%5bfield%5d=created_at&from%5bvalue%5d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, "9999-01-01T00:00:00.000Z"

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    iget-object v0, v0, Lcom/vent/a/i;->cjA:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vent/ActUserListListenings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActUserListListenings;->bXE:Lcom/vent/a/x;

    invoke-super {p0, p1}, Lcom/vent/e;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActUserListListenings;->bXE:Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v1

    iget-object v0, p0, Lcom/vent/ActUserListListenings;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const-string v2, "follows"

    if-eqz v1, :cond_0

    const v1, 0x7f0f0179

    :goto_0
    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/vent/FrgFollowsList;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ActUserListListenings;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Lcom/vent/aq;->c(ZZZ)V

    return-void

    :cond_0
    const v1, 0x7f0f0139

    goto :goto_0
.end method
