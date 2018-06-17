.class public final Lcom/vent/ActGift;
.super Lcom/vent/a;


# instance fields
.field bVH:Lcom/vent/a/h;

.field bVI:Lcom/vent/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActGift;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "user_gift"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Lcom/vent/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActGift;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActGift;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActGift;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iput-object v0, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    invoke-virtual {p0}, Lcom/vent/ActGift;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_gift"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    iget-object v0, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActGift;->finish()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f027b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    iget-object v4, v4, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    iget-object v3, v3, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/vent/ActGift;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    invoke-static {p0, v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Lcom/vent/a/h;)V

    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/vent/ActGift;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActGift;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    iget-object v0, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    invoke-static {}, Lcom/vent/b/a;->Fs()V

    iget-object v1, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cka:Ljava/lang/String;

    iget-object v2, p0, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    new-instance v3, Lcom/vent/ActGift$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActGift$1;-><init>(Lcom/vent/ActGift;Lcom/vent/b/a;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090093
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    invoke-static {p0, p1, v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/view/Menu;Lcom/vent/a/h;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
