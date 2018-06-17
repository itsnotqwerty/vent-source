.class public final Lcom/vent/ActEmailConfirmed;
.super Lcom/vent/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aR(Z)Z
    .locals 6

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    invoke-static {}, Lcom/vent/bb;->EB()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vent/ActEmailConfirmed;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/vent/ActEmailConfirmed;->bTx:Z

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/vent/ActEmailConfirmed;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActEmailConfirmed;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/vent/ActEmailConfirmed;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActEmailConfirmed;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/vent/ActEmailConfirmed;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f0134

    invoke-virtual {p0, v3}, Lcom/vent/ActEmailConfirmed;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/vent/ax;->aK(Landroid/content/Context;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-direct {v0, p0, v2}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/vent/ActEmailConfirmed;->aR(Z)Z

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActEmailConfirmed;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "EmailConfirmed"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
