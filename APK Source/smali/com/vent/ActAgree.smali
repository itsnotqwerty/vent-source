.class public final Lcom/vent/ActAgree;
.super Lcom/vent/a;


# static fields
.field private static bTs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget v0, Lcom/vent/ActAgree;->bTs:I

    if-nez v0, :cond_0

    sget v0, Lcom/vent/ActAgree;->bTs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActAgree;->bTs:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActAgree;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActAgree;->bTx:Z

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/vent/ActAgree;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActAgree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActAgree;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActAgree;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    const v0, 0x7f090031

    const v1, 0x7f0f01aa

    invoke-static {p0, v0, v1}, Lcom/vent/d/e;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActAgree;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final onDestroy()V
    .locals 1

    sget v0, Lcom/vent/ActAgree;->bTs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/ActAgree;->bTs:I

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/vent/ax;->aN(Landroid/content/Context;)V

    sput-boolean v0, Lcom/vent/bb;->ciE:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vent/ActAgree;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActAgree;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090030
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
