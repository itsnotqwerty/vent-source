.class public final Lcom/vent/ActProfile;
.super Lcom/vent/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/app/i;",
            "Lcom/vent/a/x;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/q;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/vent/ActMain;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vent/ActMain;

    invoke-virtual {p0}, Lcom/vent/ActMain;->BG()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "invite_tiers"

    invoke-static {v0, v1, p3}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final aR(Z)Z
    .locals 5

    const v2, 0x7f09010f

    const/4 v4, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->Bx()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    if-eqz v0, :cond_1

    const-string v2, "cmd"

    const-string v3, "update"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "user"

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "backLongPress"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActProfile;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActProfile;->finish()V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "blocked"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/FrgProfile;->bf(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/vent/ActProfile;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActProfile;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vent/a/x;

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invite_tiers"

    invoke-static {v0, v1}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vent/ActProfile;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lcom/vent/FrgProfile;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/vent/FrgProfile;->a(ZLcom/vent/a/x;JLjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
