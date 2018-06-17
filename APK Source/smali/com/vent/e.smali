.class public abstract Lcom/vent/e;
.super Lcom/vent/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/d",
        "<",
        "Lcom/vent/FrgFollowsList;",
        "Lcom/vent/h;",
        "Lcom/vent/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/d;-><init>()V

    return-void
.end method


# virtual methods
.method final Ck()V
    .locals 3

    iget-object v0, p0, Lcom/vent/e;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/e;->bWr:Lcom/vent/aq;

    check-cast v0, Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v0, v0, Lcom/vent/h;->cat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const v1, 0x7f09025f

    :goto_1
    invoke-virtual {p0, v1}, Lcom/vent/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const v1, 0x7f090266

    goto :goto_1
.end method

.method public em()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/vent/e;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/e;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/e;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/e;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vent/e;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgFollowsList;

    iput-object v0, p0, Lcom/vent/e;->bWr:Lcom/vent/aq;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/d;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vent/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gaTag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/vent/d;->onStart()V

    invoke-virtual {p0}, Lcom/vent/e;->Ck()V

    return-void
.end method
