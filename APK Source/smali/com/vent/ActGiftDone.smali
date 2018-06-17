.class public final Lcom/vent/ActGiftDone;
.super Lcom/vent/a;


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

    const-class v1, Lcom/vent/ActGiftDone;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "user_gift"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/vent/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/vent/ActGiftDone;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActGiftDone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActGiftDone;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActGiftDone;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActGiftDone;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    invoke-virtual {p0}, Lcom/vent/ActGiftDone;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_gift"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActGiftDone;->finish()V

    :goto_0
    return-void

    :cond_1
    const v2, 0x7f090057

    invoke-virtual {p0, v2}, Lcom/vent/ActGiftDone;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f027c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v1, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/vent/ActGiftDone;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcom/vent/a/h;->bB(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f0901aa

    invoke-virtual {p0, v2}, Lcom/vent/ActGiftDone;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p0, v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Lcom/vent/a/h;)V

    goto :goto_0
.end method
