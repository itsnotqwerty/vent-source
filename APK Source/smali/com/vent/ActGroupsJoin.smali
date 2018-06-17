.class public final Lcom/vent/ActGroupsJoin;
.super Lcom/vent/d;


# instance fields
.field bWp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;)V
    .locals 3

    const/16 v2, 0x26

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActGroupsJoin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final aR(Z)Z
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cmd"

    iget-boolean v0, p0, Lcom/vent/ActGroupsJoin;->bWp:Z

    if-eqz v0, :cond_0

    const-string v0, "refresh"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "didJoinLeave"

    iget-boolean v2, p0, Lcom/vent/ActGroupsJoin;->bWp:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "backLongPress"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActGroupsJoin;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActGroupsJoin;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/d;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/vent/ActGroupsJoin;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActGroupsJoin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/ActGroupsJoin;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActGroupsJoin;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActGroupsJoin;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f009a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActGroupsJoin;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/ak;

    iput-object v0, p0, Lcom/vent/ActGroupsJoin;->bWr:Lcom/vent/aq;

    iget-object v0, p0, Lcom/vent/ActGroupsJoin;->bWr:Lcom/vent/aq;

    invoke-virtual {v0, v3, v2, v2}, Lcom/vent/aq;->c(ZZZ)V

    if-eqz p1, :cond_0

    const-string v0, "changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActGroupsJoin;->bWp:Z

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/vent/ActGroupsJoin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_1
    return-void
.end method

.method protected final onPause()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/vent/ActGroupsJoin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/vent/d;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/d;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "JoinGroup"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/vent/ActGroupsJoin;->bWp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
