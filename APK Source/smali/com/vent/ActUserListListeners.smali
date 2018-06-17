.class public final Lcom/vent/ActUserListListeners;
.super Lcom/vent/e;


# instance fields
.field private bXE:Lcom/vent/a/x;

.field bYO:Landroid/view/View;

.field bYP:Z

.field private bYQ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/e;-><init>()V

    return-void
.end method

.method private Cl()V
    .locals 3

    iget-boolean v0, p0, Lcom/vent/ActUserListListeners;->bYQ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/ActUserListListeners;->bYP:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActUserListListeners;->bYP:Z

    new-instance v0, Lcom/vent/ActUserListListeners$2;

    const-string v1, "api/v1/my/listen_requests.json"

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActUserListListeners$2;-><init>(Lcom/vent/ActUserListListeners;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActUserListListeners;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f0f00a6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "gaTag"

    const-string v2, "Listeners"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 3

    check-cast p1, Lcom/vent/FrgFollowsList;

    iget-object v0, p0, Lcom/vent/ActUserListListeners;->bXE:Lcom/vent/a/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActUserListListeners;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/followers.json?per_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vent/h;->cap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_2

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

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

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/vent/a/i;->cjA:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final em()V
    .locals 0

    invoke-super {p0}, Lcom/vent/e;->em()V

    invoke-direct {p0}, Lcom/vent/ActUserListListeners;->Cl()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/e;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/vent/ActUserListListeners;->Cl()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vent/ActUserListListeners;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActUserListListeners;->bXE:Lcom/vent/a/x;

    invoke-super {p0, p1}, Lcom/vent/e;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActUserListListeners;->bXE:Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActUserListListeners;->bYQ:Z

    iget-object v0, p0, Lcom/vent/ActUserListListeners;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const-string v2, "follows"

    const-string v3, "follower_id"

    const-string v4, "followers"

    iget-boolean v1, p0, Lcom/vent/ActUserListListeners;->bYQ:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0083

    :goto_0
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/vent/FrgFollowsList;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vent/ActUserListListeners;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v5}, Lcom/vent/aq;->c(ZZZ)V

    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lcom/vent/ActUserListListeners;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    new-instance v1, Lcom/vent/ActUserListListeners$1;

    invoke-direct {v1, p0}, Lcom/vent/ActUserListListeners$1;-><init>(Lcom/vent/ActUserListListeners;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/vent/ActUserListListeners;->Cl()V

    return-void

    :cond_0
    const v1, 0x7f0f00d1

    goto :goto_0
.end method
