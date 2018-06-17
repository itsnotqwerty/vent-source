.class public final Lcom/vent/ActUserListCommentFavs;
.super Lcom/vent/e;


# instance fields
.field private bYL:Lcom/vent/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/e;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/d;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActUserListCommentFavs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f0f006c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "gaTag"

    const-string v2, "CommentFavourites"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 3

    check-cast p1, Lcom/vent/FrgFollowsList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/comments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActUserListCommentFavs;->bYL:Lcom/vent/a/d;

    iget-object v1, v1, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favourites.json?per_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_3

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5bfield%5d%5b%5d=created_at&from%5bfield%5d%5b%5d=id&from%5bvalue%5d%5b%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "9999-01-01T00:00:00.000Z"

    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5bvalue%5d%5b%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/vent/a/i;->cjA:Ljava/util/Date;

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/vent/a/i;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vent/ActUserListCommentFavs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/d;

    iput-object v0, p0, Lcom/vent/ActUserListCommentFavs;->bYL:Lcom/vent/a/d;

    invoke-super {p0, p1}, Lcom/vent/e;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActUserListCommentFavs;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const-string v1, "comment_favourites"

    const v2, 0x7f0f00cf

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/vent/FrgFollowsList;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ActUserListCommentFavs;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method
