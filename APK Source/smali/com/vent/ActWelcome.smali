.class public final Lcom/vent/ActWelcome;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static bTs:I


# instance fields
.field private bTI:Lcom/vent/views/b;

.field private bZG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/vent/a/x;)V
    .locals 2

    sget v0, Lcom/vent/ActWelcome;->bTs:I

    if-nez v0, :cond_0

    sget v0, Lcom/vent/ActWelcome;->bTs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActWelcome;->bTs:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActWelcome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "inviteId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "inviter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActWelcome;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_2
    new-instance v0, Lcom/vent/views/b;

    const-string v1, "gradientpos"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/vent/ActRegister1;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/vent/a/x;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/ActSignIn;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090248 -> :sswitch_0
        0x7f090281 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActWelcome;->bTx:Z

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActWelcome;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f090248

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090281

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/vent/d/e;->bL(Landroid/content/Context;)V

    const v0, 0x7f0902dc

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmV:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    const v0, 0x7f0902d0

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/vent/ActWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    const-string v0, "checkedInviter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActWelcome;->bZG:Z

    :cond_0
    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    sget v0, Lcom/vent/ActWelcome;->bTs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/ActWelcome;->bTs:I

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActWelcome;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfP:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "checkedInviter"

    iget-boolean v1, p0, Lcom/vent/ActWelcome;->bZG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/vent/a;->onStart()V

    iget-boolean v0, p0, Lcom/vent/ActWelcome;->bZG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActWelcome;->bZG:Z

    invoke-virtual {p0}, Lcom/vent/ActWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "inviteId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vent/ActWelcome;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/ActWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "inviter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {p0, v2, v1, v0}, Lcom/vent/ActRegister1;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/vent/a/x;)V

    :cond_0
    return-void
.end method
