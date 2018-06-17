.class public final Lcom/vent/ActForgotPassword;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private bTI:Lcom/vent/views/b;

.field bTO:Landroid/support/design/widget/TextInputLayout;

.field bTP:Landroid/widget/EditText;

.field bTT:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActForgotPassword;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private wf()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    new-instance v2, Lcom/vent/ActForgotPassword$1;

    invoke-direct {v2, p0}, Lcom/vent/ActForgotPassword$1;-><init>(Lcom/vent/ActForgotPassword;)V

    invoke-static {p0, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    return-void
.end method


# virtual methods
.method public final aR(Z)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gradientpos"

    iget-object v2, p0, Lcom/vent/ActForgotPassword;->bTI:Lcom/vent/views/b;

    invoke-virtual {v2}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActForgotPassword;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActForgotPassword;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/vent/ActForgotPassword;->bTx:Z

    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/vent/ActForgotPassword;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/vent/ActForgotPassword;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActForgotPassword;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/vent/ActForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/vent/ActForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActForgotPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActForgotPassword;->bTI:Lcom/vent/views/b;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActForgotPassword;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/vent/ActForgotPassword;->wf()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-static {v2, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900d9
        :pswitch_0
    .end packed-switch
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
    invoke-direct {p0}, Lcom/vent/ActForgotPassword;->wf()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f09026e
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "ForgotPassword"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
